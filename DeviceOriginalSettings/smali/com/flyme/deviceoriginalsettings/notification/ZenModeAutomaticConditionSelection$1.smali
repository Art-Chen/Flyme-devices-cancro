.class Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection$1;
.super Ljava/lang/Object;
.source "ZenModeAutomaticConditionSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection;->newCheckBox(Ljava/lang/Object;)Landroid/widget/CheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection;

.field final synthetic val$button:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection$1;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection$1;->val$button:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 78
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection$1;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection$1;->val$button:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    # invokes: Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection;->setSelectedCondition(Landroid/net/Uri;Z)V
    invoke-static {v1, v0, p2}, Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection;->access$100(Lcom/flyme/deviceoriginalsettings/notification/ZenModeAutomaticConditionSelection;Landroid/net/Uri;Z)V

    .line 79
    return-void
.end method
