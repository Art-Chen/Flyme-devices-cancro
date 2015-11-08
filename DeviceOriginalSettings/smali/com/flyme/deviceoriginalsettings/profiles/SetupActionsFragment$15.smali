.class Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestBrightnessDialog(Lcyanogenmod/profiles/BrightnessSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

.field final synthetic val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

.field final synthetic val$override:Landroid/widget/CheckBox;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lcyanogenmod/profiles/BrightnessSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$override:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 909
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 910
    .local v0, "value":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v1, v0}, Lcyanogenmod/profiles/BrightnessSettings;->setValue(I)V

    .line 911
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$override:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcyanogenmod/profiles/BrightnessSettings;->setOverride(Z)V

    .line 912
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v1, v2}, Lcyanogenmod/app/Profile;->setBrightness(Lcyanogenmod/profiles/BrightnessSettings;)V

    .line 913
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 914
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->access$100(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    .line 915
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 916
    return-void
.end method
