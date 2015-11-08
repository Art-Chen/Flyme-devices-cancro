.class public Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;
.super Ljava/lang/Object;
.source "QSTileHolder.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final resourceName:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;->resourceName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;->value:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static from(Landroid/content/Context;Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tileType"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "resourceName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 47
    .local v2, "stringId":I
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->getAvailableTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :cond_1
    const-string v3, "lte"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsLte(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsDdsSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 194
    :goto_2
    :pswitch_0
    if-eq v2, v4, :cond_4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "name":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;

    invoke-direct {v3, v1, p1, v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 64
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "bt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "inversion"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "cell"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "airplane"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "rotation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "flashlight"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_8
    const-string v3, "location"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_9
    const-string v3, "cast"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_a
    const-string v3, "hotspot"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "adb_network"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "lte"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "profiles"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "performance"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "nfc"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "compass"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "lockscreen"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "visualizer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "volume_panel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "screen_timeout"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "live_display"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "usb_tether"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "heads_up"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "ambient_display"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "sync"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "battery_saver"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "next_alarm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "ime_selector"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "su"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "adb"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1e

    goto/16 :goto_1

    .line 68
    :pswitch_1
    const-string v1, "ic_qs_wifi_full_4"

    .line 69
    const v2, 0x7f0902c3

    .line 70
    goto/16 :goto_2

    .line 72
    :pswitch_2
    const-string v1, "ic_qs_bluetooth_on"

    .line 73
    const v2, 0x7f0902c4

    .line 74
    goto/16 :goto_2

    .line 76
    :pswitch_3
    const-string v1, "ic_invert_colors_disable"

    .line 77
    const v2, 0x7f0902c5

    .line 78
    goto/16 :goto_2

    .line 80
    :pswitch_4
    const-string v1, "ic_qs_signal_full_4"

    .line 81
    const v2, 0x7f0902c6

    .line 82
    goto/16 :goto_2

    .line 84
    :pswitch_5
    const-string v1, "ic_signal_airplane_disable"

    .line 85
    const v2, 0x7f0902c7

    .line 86
    goto/16 :goto_2

    .line 88
    :pswitch_6
    const-string v1, "ic_portrait_to_auto_rotate"

    .line 89
    const v2, 0x7f0902c8

    .line 90
    goto/16 :goto_2

    .line 92
    :pswitch_7
    const-string v1, "ic_signal_flashlight_disable"

    .line 93
    const v2, 0x7f0902c9

    .line 94
    goto/16 :goto_2

    .line 96
    :pswitch_8
    const-string v1, "ic_qs_location_on"

    .line 97
    const v2, 0x7f0902ca

    .line 98
    goto/16 :goto_2

    .line 100
    :pswitch_9
    const-string v1, "ic_qs_cast_on"

    .line 101
    const v2, 0x7f0902cb

    .line 102
    goto/16 :goto_2

    .line 104
    :pswitch_a
    const-string v1, "ic_hotspot_disable"

    .line 105
    const v2, 0x7f0902cc

    .line 106
    goto/16 :goto_2

    .line 108
    :pswitch_b
    const-string v1, "ic_qs_network_adb_on"

    .line 109
    const v2, 0x7f0902cd

    .line 110
    goto/16 :goto_2

    .line 112
    :pswitch_c
    const-string v1, "ic_qs_lte_on"

    .line 113
    const v2, 0x7f0902d3

    .line 114
    goto/16 :goto_2

    .line 116
    :pswitch_d
    const-string v1, "ic_qs_system_profiles"

    .line 117
    const v2, 0x7f0902ce

    .line 118
    goto/16 :goto_2

    .line 120
    :pswitch_e
    const-string v1, "ic_qs_perf_profile_highperf_avd"

    .line 121
    const v2, 0x7f0902cf

    .line 122
    goto/16 :goto_2

    .line 124
    :pswitch_f
    const-string v1, "ic_qs_nfc_on"

    .line 125
    const v2, 0x7f0902d0

    .line 126
    goto/16 :goto_2

    .line 128
    :pswitch_10
    const-string v1, "ic_qs_compass_on"

    .line 129
    const v2, 0x7f0902d1

    .line 130
    goto/16 :goto_2

    .line 132
    :pswitch_11
    const-string v1, "ic_qs_lock_screen_on"

    .line 133
    const v2, 0x7f0902d2

    .line 134
    goto/16 :goto_2

    .line 136
    :pswitch_12
    const-string v1, "ic_qs_visualizer_static"

    .line 137
    const v2, 0x7f0902d4

    .line 138
    goto/16 :goto_2

    .line 140
    :pswitch_13
    const-string v1, "ic_qs_volume_panel"

    .line 141
    const v2, 0x7f0902d5

    .line 142
    goto/16 :goto_2

    .line 144
    :pswitch_14
    const-string v1, "ic_qs_screen_timeout_vector"

    .line 145
    const v2, 0x7f0902d6

    .line 146
    goto/16 :goto_2

    .line 148
    :pswitch_15
    const-string v1, "ic_livedisplay_day"

    .line 149
    const v2, 0x7f090339

    .line 150
    goto/16 :goto_2

    .line 152
    :pswitch_16
    const-string v1, "ic_qs_usb_tether_on"

    .line 153
    const v2, 0x7f0902d7

    .line 154
    goto/16 :goto_2

    .line 156
    :pswitch_17
    const-string v1, "ic_qs_heads_up_on"

    .line 157
    const v2, 0x7f0902d8

    .line 158
    goto/16 :goto_2

    .line 160
    :pswitch_18
    const-string v1, "ic_qs_ambientdisplay_on"

    .line 161
    const v2, 0x7f0902d9

    .line 162
    goto/16 :goto_2

    .line 164
    :pswitch_19
    const-string v1, "ic_qs_sync_on"

    .line 165
    const v2, 0x7f0902da

    .line 166
    goto/16 :goto_2

    .line 168
    :pswitch_1a
    const-string v1, "ic_qs_battery_saver_on"

    .line 169
    const v2, 0x7f0902db

    .line 170
    goto/16 :goto_2

    .line 174
    :pswitch_1b
    const-string v1, "ic_dynamic_qs_next_alarm"

    .line 175
    const v2, 0x7f0902dc

    .line 176
    goto/16 :goto_2

    .line 178
    :pswitch_1c
    const-string v1, "ic_dynamic_qs_ime_selector"

    .line 179
    const v2, 0x7f0902dd

    .line 180
    goto/16 :goto_2

    .line 182
    :pswitch_1d
    const-string v1, "ic_dynamic_qs_su"

    .line 183
    const v2, 0x7f0902de

    .line 184
    goto/16 :goto_2

    .line 186
    :pswitch_1e
    const-string v1, "ic_dynamic_qs_adb"

    .line 187
    const v2, 0x7f0902df

    .line 188
    goto/16 :goto_2

    .line 64
    :sswitch_data_0
    .sparse-switch
        -0x7d6865e5 -> :sswitch_18
        -0x783813ed -> :sswitch_3
        -0x6c049572 -> :sswitch_b
        -0x583cefd0 -> :sswitch_e
        -0x5087e761 -> :sswitch_13
        -0x468444da -> :sswitch_7
        -0x42736839 -> :sswitch_17
        -0x3bbd5416 -> :sswitch_d
        -0x37ebd9fb -> :sswitch_1b
        -0x33e8fe1d -> :sswitch_1a
        -0x285a60ae -> :sswitch_5
        -0x130a8722 -> :sswitch_12
        -0x266f082 -> :sswitch_6
        0x0 -> :sswitch_0
        0xc52 -> :sswitch_2
        0xe62 -> :sswitch_1d
        0x1789f -> :sswitch_1e
        0x1a3dd -> :sswitch_c
        0x1a9ab -> :sswitch_f
        0x2e7b3f -> :sswitch_9
        0x2e8962 -> :sswitch_4
        0x361a9b -> :sswitch_19
        0x37af15 -> :sswitch_1
        0x3343888e -> :sswitch_14
        0x38a73d12 -> :sswitch_10
        0x3aa1b69d -> :sswitch_1c
        0x418a9ecf -> :sswitch_a
        0x59cdc46f -> :sswitch_15
        0x6adcb957 -> :sswitch_11
        0x714f9fb5 -> :sswitch_8
        0x71a9772d -> :sswitch_16
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method
