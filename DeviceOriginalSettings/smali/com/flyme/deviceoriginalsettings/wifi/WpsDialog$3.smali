.class Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog$3;
.super Ljava/util/TimerTask;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog$3;->this$0:Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog$3;->this$0:Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog;

    # getter for: Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog;->access$400(Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog$3$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog$3$1;-><init>(Lcom/flyme/deviceoriginalsettings/wifi/WpsDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method