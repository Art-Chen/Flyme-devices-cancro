.class final Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile$1;
.super Ljava/lang/Object;
.source "DashboardTile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 187
    new-instance v0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;

    invoke-direct {v0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 190
    new-array v0, p1, [Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile$1;->newArray(I)[Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;

    move-result-object v0

    return-object v0
.end method
