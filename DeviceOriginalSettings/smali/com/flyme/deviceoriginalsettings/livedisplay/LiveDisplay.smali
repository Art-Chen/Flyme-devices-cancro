.class public Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "LiveDisplay.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/flyme/deviceoriginalsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mColorEnhancement:Landroid/preference/SwitchPreference;

.field private mColorProfile:Landroid/preference/ListPreference;

.field private mDefaultDayTemperature:I

.field private mDefaultNightTemperature:I

.field private mDisplayTemperature:Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayTemperature;

.field private final mHandler:Landroid/os/Handler;

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mHasDisplayModes:Z

.field private mLiveDisplay:Landroid/preference/ListPreference;

.field private mLowPower:Landroid/preference/SwitchPreference;

.field private mModeEntries:[Ljava/lang/String;

.field private mModeSummaries:[Ljava/lang/String;

.field private mModeValues:[Ljava/lang/String;

.field private final mObserver:Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$SettingsObserver;

.field private mOutdoorMode:Landroid/preference/SwitchPreference;

.field private mScreenColorSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$1;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$1;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$SettingsObserver;-><init>(Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mObserver:Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$SettingsObserver;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->updateModeSummary()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->isPostProcessingSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static isPostProcessingSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    const-string v0, "com.qualcomm.display"

    invoke-static {p0, v0}, Lcom/flyme/deviceoriginalsettings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateColorProfileSummary(Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 261
    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    if-nez v6, :cond_0

    .line 292
    :goto_0
    return-void

    .line 265
    :cond_0
    if-nez p1, :cond_1

    .line 266
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v6}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .line 267
    .local v0, "cur":Lcyanogenmod/hardware/DisplayMode;
    if-eqz v0, :cond_1

    iget v6, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ltz v6, :cond_1

    .line 268
    iget v6, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 272
    .end local v0    # "cur":Lcyanogenmod/hardware/DisplayMode;
    :cond_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v6, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 273
    .local v2, "idx":I
    if-gez v2, :cond_2

    .line 274
    const-string v6, "LiveDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No summary resource found for profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v6, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 281
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "_"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "name":Ljava/lang/String;
    const-string v6, "live_display_color_profile_%s_summary"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "summaryRes":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "string"

    const-string v8, "com.android.settings"

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 285
    .local v4, "resId":I
    if-gtz v4, :cond_3

    .line 286
    const-string v6, "LiveDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No summary resource found for profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 290
    :cond_3
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    const-string v7, "%s - %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateDisplayModes()Z
    .locals 9

    .prologue
    .line 233
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v7}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v4

    .line 234
    .local v4, "modes":[Lcyanogenmod/hardware/DisplayMode;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-nez v7, :cond_1

    .line 235
    :cond_0
    const/4 v7, 0x0

    .line 257
    :goto_0
    return v7

    .line 238
    :cond_1
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v7}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .line 239
    .local v0, "cur":Lcyanogenmod/hardware/DisplayMode;
    const/4 v1, -0x1

    .line 240
    .local v1, "curId":I
    array-length v7, v4

    new-array v2, v7, [Ljava/lang/String;

    .line 241
    .local v2, "entries":[Ljava/lang/String;
    array-length v7, v4

    new-array v6, v7, [Ljava/lang/String;

    .line 242
    .local v6, "values":[Ljava/lang/String;
    array-length v7, v4

    new-array v5, v7, [Ljava/lang/String;

    .line 243
    .local v5, "summaries":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_3

    .line 244
    aget-object v7, v4, v3

    iget v7, v7, Lcyanogenmod/hardware/DisplayMode;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 245
    aget-object v7, v4, v3

    iget-object v7, v7, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    aput-object v7, v2, v3

    .line 246
    aget-object v7, v4, v3

    iget-object v7, v7, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    aput-object v7, v5, v3

    .line 247
    if-eqz v0, :cond_2

    aget-object v7, v4, v3

    iget v7, v7, Lcyanogenmod/hardware/DisplayMode;->id:I

    iget v8, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ne v7, v8, :cond_2

    .line 248
    const/4 v1, -0x1

    .line 243
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    :cond_3
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 252
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 253
    if-ltz v1, :cond_4

    .line 254
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 257
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private updateModeSummary()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "display_temperature_mode"

    const/4 v6, -0x2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 299
    .local v1, "mode":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 300
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 301
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayTemperature;

    if-eqz v2, :cond_1

    .line 307
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayTemperature;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayTemperature;->setEnabled(Z)V

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 310
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 312
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 307
    goto :goto_0

    :cond_4
    move v3, v4

    .line 310
    goto :goto_1
.end method

.method private updateTemperatureSummary()V
    .locals 8

    .prologue
    const/4 v5, -0x2

    .line 315
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_temperature_day"

    iget v4, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mDefaultDayTemperature:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 319
    .local v0, "day":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_temperature_night"

    iget v4, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mDefaultNightTemperature:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 324
    .local v1, "night":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayTemperature;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09033d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayTemperature;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super/range {p0 .. p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 113
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 114
    .local v11, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 116
    .local v10, "res":Landroid/content/res/Resources;
    const v14, 0x10e0088

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mDefaultDayTemperature:I

    .line 118
    const v14, 0x10e0089

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mDefaultNightTemperature:I

    .line 121
    invoke-static {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 123
    const v14, 0x7f060028

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->addPreferencesFromResource(I)V

    .line 125
    const-string v14, "live_display_options"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 127
    .local v9, "liveDisplayPrefs":Landroid/preference/PreferenceCategory;
    const-string v14, "advanced"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 130
    .local v3, "advancedPrefs":Landroid/preference/PreferenceCategory;
    const-string v14, "display_temperature_mode"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v11, v14, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 133
    .local v2, "adaptiveMode":I
    const-string v14, "live_display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 136
    const v14, 0x1070011

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    .line 138
    const v14, 0x1070013

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    .line 140
    const v14, 0x1070012

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v15, 0x100

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-nez v14, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 146
    .local v7, "idx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    new-array v4, v14, [Ljava/lang/String;

    .line 147
    .local v4, "entriesTemp":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    new-array v13, v14, [Ljava/lang/String;

    .line 148
    .local v13, "valuesTemp":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    new-array v12, v14, [Ljava/lang/String;

    .line 149
    .local v12, "summariesTemp":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 150
    .local v8, "j":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    array-length v14, v14

    if-ge v6, v14, :cond_1

    .line 151
    if-ne v6, v7, :cond_0

    .line 150
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 154
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    aget-object v14, v14, v6

    aput-object v14, v4, v8

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    aget-object v14, v14, v6

    aput-object v14, v13, v8

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v14, v14, v6

    aput-object v14, v12, v8

    .line 157
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 159
    :cond_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    .line 160
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    .line 164
    .end local v4    # "entriesTemp":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "idx":I
    .end local v8    # "j":I
    .end local v12    # "summariesTemp":[Ljava/lang/String;
    .end local v13    # "valuesTemp":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    const-string v14, "live_display_color_temperature"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayTemperature;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayTemperature;

    .line 170
    const-string v14, "live_display_color_profile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    .line 171
    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v15, 0x2000

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->updateDisplayModes()Z

    move-result v14

    if-nez v14, :cond_a

    .line 173
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    :goto_2
    const-string v14, "display_auto_outdoor_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    .line 180
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v15, 0x100

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-nez v14, :cond_4

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    .line 186
    :cond_4
    const-string v14, "display_low_power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    .line 187
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-nez v14, :cond_5

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    .line 193
    :cond_5
    const-string v14, "display_color_enhance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    .line 194
    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-nez v14, :cond_6

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    .line 200
    :cond_6
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-nez v14, :cond_7

    .line 202
    const-string v14, "gamma_tuning"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 203
    .local v5, "gammaPref":Landroid/preference/Preference;
    if-eqz v5, :cond_7

    .line 204
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    .end local v5    # "gammaPref":Landroid/preference/Preference;
    :cond_7
    const-string v14, "screencolor_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    .line 209
    if-eqz v3, :cond_9

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    if-nez v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->isPostProcessingSupported(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 212
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_9
    return-void

    .line 175
    :cond_a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 229
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mObserver:Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$SettingsObserver;->register(Z)V

    .line 230
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 330
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_temperature_mode"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 345
    :cond_0
    :goto_0
    return v9

    .line 334
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    move-object v5, p2

    .line 335
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 336
    .local v2, "id":I
    const-string v5, "LiveDisplay"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v5}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .local v0, "arr$":[Lcyanogenmod/hardware/DisplayMode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 338
    .local v4, "mode":Lcyanogenmod/hardware/DisplayMode;
    iget v5, v4, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ne v5, v2, :cond_2

    .line 339
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v5, v4, v9}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    .line 340
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->updateColorProfileSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 220
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->updateModeSummary()V

    .line 221
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->updateColorProfileSummary(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->mObserver:Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$SettingsObserver;->register(Z)V

    .line 224
    return-void
.end method
