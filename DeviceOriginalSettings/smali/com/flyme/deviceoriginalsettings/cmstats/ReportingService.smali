.class public Lcom/flyme/deviceoriginalsettings/cmstats/ReportingService;
.super Landroid/app/IntentService;
.source "ReportingService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const-string v19, "jobscheduler"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/job/JobScheduler;

    .line 43
    .local v16, "js":Landroid/app/job/JobScheduler;
    invoke-static/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->getNextJobId(Landroid/content/Context;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 46
    invoke-static/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->clearJobQueue(Landroid/content/Context;)V

    .line 48
    invoke-virtual/range {v16 .. v16}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v4

    .line 52
    .local v4, "allPendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, 0x2

    const/16 v20, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 56
    invoke-virtual/range {v16 .. v16}, Landroid/app/job/JobScheduler;->cancelAll()V

    .line 65
    .end local v4    # "allPendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->getNextJobId(Landroid/content/Context;)I

    move-result v8

    .local v8, "cyanogenJobId":I
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->addJob(Landroid/content/Context;I)V

    .line 66
    invoke-static/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->getNextJobId(Landroid/content/Context;)I

    move-result v6

    .local v6, "cmOrgJobId":I
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->addJob(Landroid/content/Context;I)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/flyme/deviceoriginalsettings/cmstats/Utilities;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/cmstats/Utilities;->getDevice()Ljava/lang/String;

    move-result-object v13

    .line 73
    .local v13, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/cmstats/Utilities;->getModVersion()Ljava/lang/String;

    move-result-object v14

    .line 74
    .local v14, "deviceVersion":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/flyme/deviceoriginalsettings/cmstats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "deviceCountry":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/flyme/deviceoriginalsettings/cmstats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 76
    .local v9, "deviceCarrier":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/flyme/deviceoriginalsettings/cmstats/Utilities;->getCarrierId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 78
    .local v10, "deviceCarrierId":Ljava/lang/String;
    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 79
    .local v7, "cyanogenBundle":Landroid/os/PersistableBundle;
    const-string v19, "deviceName"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v13}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v19, "uniqueId"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v19, "version"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v14}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v19, "country"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v11}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v19, "carrier"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v9}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v19, "carrierId"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v10}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v19, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 87
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5, v7}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    .line 90
    .local v5, "cmBundle":Landroid/os/PersistableBundle;
    const-string v19, "job_type"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v19, "job_type"

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 96
    new-instance v19, Landroid/app/job/JobInfo$Builder;

    new-instance v20, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingService;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const-class v22, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v8, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v19

    const-wide/16 v20, 0x3e8

    invoke-virtual/range {v19 .. v21}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 105
    new-instance v19, Landroid/app/job/JobInfo$Builder;

    new-instance v20, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingService;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const-class v22, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v19

    const-wide/16 v20, 0x3e8

    invoke-virtual/range {v19 .. v21}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 114
    invoke-static/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 115
    .local v18, "prefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "pref_anonymous_checked_in"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    .line 118
    return-void

    .line 58
    .end local v5    # "cmBundle":Landroid/os/PersistableBundle;
    .end local v6    # "cmOrgJobId":I
    .end local v7    # "cyanogenBundle":Landroid/os/PersistableBundle;
    .end local v8    # "cyanogenJobId":I
    .end local v9    # "deviceCarrier":Ljava/lang/String;
    .end local v10    # "deviceCarrierId":Ljava/lang/String;
    .end local v11    # "deviceCountry":Ljava/lang/String;
    .end local v12    # "deviceId":Ljava/lang/String;
    .end local v13    # "deviceName":Ljava/lang/String;
    .end local v14    # "deviceVersion":Ljava/lang/String;
    .end local v18    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "allPendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/job/JobInfo;

    .line 59
    .local v17, "pendingJob":Landroid/app/job/JobInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/app/job/JobInfo;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->addJob(Landroid/content/Context;I)V

    goto :goto_0
.end method
