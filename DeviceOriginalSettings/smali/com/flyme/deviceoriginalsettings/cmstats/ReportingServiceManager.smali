.class public Lcom/flyme/deviceoriginalsettings/cmstats/ReportingServiceManager;
.super Landroid/content/BroadcastReceiver;
.source "ReportingServiceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static launchService(Landroid/content/Context;Z)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "force"    # Z

    .prologue
    const-wide/32 v12, 0x5265c00

    const-wide/16 v10, 0x0

    .line 78
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/cmstats/Utilities;->isStatsCollectionEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 102
    :goto_0
    return-void

    .line 84
    :cond_0
    if-nez p1, :cond_2

    .line 85
    const-string v8, "pref_anonymous_checked_in"

    invoke-interface {v1, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 86
    .local v2, "lastSynced":J
    cmp-long v8, v2, v10

    if-nez v8, :cond_1

    .line 87
    invoke-static {p0, v10, v11}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 91
    .local v4, "timeElapsed":J
    cmp-long v8, v4, v12

    if-gez v8, :cond_2

    .line 92
    sub-long v6, v12, v4

    .line 93
    .local v6, "timeLeft":J
    const-string v8, "CMStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Waiting for next sync : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/32 v10, 0x36ee80

    div-long v10, v6, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hours"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v2    # "lastSynced":J
    .end local v4    # "timeElapsed":J
    .end local v6    # "timeLeft":J
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-class v8, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingService;

    invoke-virtual {v0, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static migrate(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 105
    const-string v0, "pref_anonymous_opt_in"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/flyme/deviceoriginalsettings/cmstats/Utilities;->setStatsCollectionEnabled(Landroid/content/Context;Z)V

    .line 107
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_anonymous_opt_in"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public static setAlarm(Landroid/content/Context;J)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millisFromNow"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    .line 46
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 47
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "pref_anonymous_opt_in"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    invoke-static {p0, v4}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingServiceManager;->migrate(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/cmstats/Utilities;->isStatsCollectionEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 75
    :goto_0
    return-void

    .line 54
    :cond_1
    cmp-long v5, p1, v6

    if-gtz v5, :cond_3

    .line 55
    const-string v5, "pref_anonymous_checked_in"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 56
    .local v2, "lastSynced":J
    cmp-long v5, v2, v6

    if-nez v5, :cond_2

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 61
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_anonymous_checked_in"

    invoke-interface {v5, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    const-string v5, "CMStats"

    const-string v6, "Set alarm for first sync."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long p1, v6, v8

    .line 67
    .end local v2    # "lastSynced":J
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.settings.action.TRIGGER_REPORT_METRICS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    const-class v5, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingServiceManager;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 71
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p1

    invoke-static {p0, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v10, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 73
    const-string v5, "CMStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next sync attempt in : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v8, 0x36ee80

    div-long v8, p1, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hours"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.action.TRIGGER_REPORT_METRICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "force"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingServiceManager;->launchService(Landroid/content/Context;Z)V

    goto :goto_0
.end method
