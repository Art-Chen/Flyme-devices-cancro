.class Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;
.super Landroid/os/AsyncTask;
.source "StatsUploadJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mJobParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p2, "jobParams"    # Landroid/app/job/JobParameters;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    .line 96
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v10

    .line 103
    .local v10, "extras":Landroid/os/PersistableBundle;
    const-string v1, "uniqueId"

    invoke-virtual {v10, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "deviceId":Ljava/lang/String;
    const-string v1, "deviceName"

    invoke-virtual {v10, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "deviceName":Ljava/lang/String;
    const-string v1, "version"

    invoke-virtual {v10, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "deviceVersion":Ljava/lang/String;
    const-string v1, "country"

    invoke-virtual {v10, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "deviceCountry":Ljava/lang/String;
    const-string v1, "carrier"

    invoke-virtual {v10, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "deviceCarrier":Ljava/lang/String;
    const-string v1, "carrierId"

    invoke-virtual {v10, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "deviceCarrierId":Ljava/lang/String;
    const-string v1, "timeStamp"

    invoke-virtual {v10, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 111
    .local v8, "timeStamp":J
    const/4 v12, 0x0

    .line 112
    .local v12, "success":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const-string v1, "job_type"

    const/4 v13, -0x1

    invoke-virtual {v10, v1, v13}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 115
    .local v11, "jobType":I
    packed-switch v11, :pswitch_data_0

    .line 138
    .end local v11    # "jobType":I
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 140
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;

    # getter for: Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->access$300(Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;)Ljava/util/Map;

    move-result-object v1

    iget-object v13, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;

    iget-object v13, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v13}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v13

    invoke-static {v1, v13}, Lcom/flyme/deviceoriginalsettings/cmstats/AnonymousStats;->removeJob(Landroid/content/Context;I)V

    .line 147
    :cond_1
    iget-object v13, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;

    iget-object v14, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    if-nez v12, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v13, v14, v1}, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 148
    const/4 v1, 0x0

    return-object v1

    .line 118
    .restart local v11    # "jobType":I
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;

    # invokes: Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->uploadToCyanogen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    invoke-static/range {v1 .. v9}, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->access$000(Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    # getter for: Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v13, "Could not upload stats checkin to cyanogen server"

    invoke-static {v1, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v12, 0x0

    .line 124
    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;

    # invokes: Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->uploadToCM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v1 .. v7}, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->access$200(Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/cmstats/StatsUploadJobService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v13, "Could not upload stats checkin to commnity server"

    invoke-static {v1, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 v12, 0x0

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    .end local v11    # "jobType":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 120
    .restart local v11    # "jobType":I
    :catch_2
    move-exception v0

    goto :goto_2

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
