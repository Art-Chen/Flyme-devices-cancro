.class Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary$MyPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "AppOpsSummary.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private mPageTemplates:[Lcom/flyme/deviceoriginalsettings/applications/AppOpsState$OpsTemplate;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary;Landroid/app/FragmentManager;[Lcom/flyme/deviceoriginalsettings/applications/AppOpsState$OpsTemplate;)V
    .locals 0
    .param p2, "fm"    # Landroid/app/FragmentManager;
    .param p3, "templates"    # [Lcom/flyme/deviceoriginalsettings/applications/AppOpsState$OpsTemplate;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary;

    .line 66
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 67
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary$MyPagerAdapter;->mPageTemplates:[Lcom/flyme/deviceoriginalsettings/applications/AppOpsState$OpsTemplate;

    .line 68
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary$MyPagerAdapter;->mPageTemplates:[Lcom/flyme/deviceoriginalsettings/applications/AppOpsState$OpsTemplate;

    array-length v0, v0

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary;

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary;->mCurPos:I

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    new-instance v0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsCategory;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary$MyPagerAdapter;->mPageTemplates:[Lcom/flyme/deviceoriginalsettings/applications/AppOpsState$OpsTemplate;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/applications/AppOpsCategory;-><init>(Lcom/flyme/deviceoriginalsettings/applications/AppOpsState$OpsTemplate;)V

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary;->mPageNames:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 103
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary;

    iput p1, v0, Lcom/flyme/deviceoriginalsettings/applications/AppOpsSummary;->mCurPos:I

    .line 92
    return-void
.end method