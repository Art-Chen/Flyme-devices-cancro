.class Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$1;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$1;->val$pref:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$1;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;->removeCustomApplicationPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;->access$000(Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V

    .line 402
    return-void
.end method
