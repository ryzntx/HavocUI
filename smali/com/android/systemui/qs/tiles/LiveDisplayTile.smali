.class public Lcom/android/systemui/qs/tiles/LiveDisplayTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "LiveDisplayTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final LIVEDISPLAY_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAnnouncementEntries:[Ljava/lang/String;

.field private mDayTemperature:I

.field private mDescriptionEntries:[Ljava/lang/String;

.field private mEntries:[Ljava/lang/String;

.field private final mEntryIconRes:[I

.field private mListening:Z

.field private final mLiveDisplay:Lcom/android/internal/custom/hardware/LiveDisplayManager;

.field private final mNightDisplayAvailable:Z

.field private final mObserver:Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;

.field private final mOutdoorModeAvailable:Z

.field private mTitle:Ljava/lang/String;

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LIVEDISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->LIVEDISPLAY_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 78
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mNightDisplayAvailable:Z

    .line 80
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070098

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mEntryIconRes:[I

    const/4 v0, 0x0

    move v1, v0

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mEntryIconRes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 84
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->updateEntries()V

    .line 90
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/custom/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/custom/hardware/LiveDisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mLiveDisplay:Lcom/android/internal/custom/hardware/LiveDisplayManager;

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/custom/hardware/LiveDisplayManager;->getConfig()Lcom/android/internal/custom/hardware/LiveDisplayConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mLiveDisplay:Lcom/android/internal/custom/hardware/LiveDisplayManager;

    invoke-virtual {p1}, Lcom/android/internal/custom/hardware/LiveDisplayManager;->getConfig()Lcom/android/internal/custom/hardware/LiveDisplayConfig;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/internal/custom/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mLiveDisplay:Lcom/android/internal/custom/hardware/LiveDisplayManager;

    .line 93
    invoke-virtual {p1}, Lcom/android/internal/custom/hardware/LiveDisplayManager;->getConfig()Lcom/android/internal/custom/hardware/LiveDisplayConfig;

    move-result-object p1

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Lcom/android/internal/custom/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mOutdoorModeAvailable:Z

    .line 94
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mLiveDisplay:Lcom/android/internal/custom/hardware/LiveDisplayManager;

    invoke-virtual {p1}, Lcom/android/internal/custom/hardware/LiveDisplayManager;->getDayColorTemperature()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mDayTemperature:I

    goto :goto_1

    .line 96
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mOutdoorModeAvailable:Z

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mDayTemperature:I

    .line 100
    :goto_1
    new-instance p1, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;-><init>(Lcom/android/systemui/qs/tiles/LiveDisplayTile;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mObserver:Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;

    .line 101
    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;->startObserving()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/LiveDisplayTile;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mDayTemperature:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)Lcom/android/internal/custom/hardware/LiveDisplayManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mLiveDisplay:Lcom/android/internal/custom/hardware/LiveDisplayManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->getCurrentModeIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/LiveDisplayTile;Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/LiveDisplayTile;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private changeToNextMode()V
    .locals 7

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->getCurrentModeIndex()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 185
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mValues:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 196
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mOutdoorModeAvailable:Z

    if-nez v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mDayTemperature:I

    const/16 v5, 0x1964

    const/4 v6, 0x4

    if-ne v4, v5, :cond_2

    if-eq v2, v6, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mNightDisplayAvailable:Z

    if-eqz v4, :cond_4

    if-eq v2, v6, :cond_3

    if-ne v2, v1, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 200
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mValues:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    :goto_1
    move v0, v3

    goto :goto_0

    .line 208
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "display_temperature_mode"

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private getCurrentModeIndex()I
    .locals 1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mLiveDisplay:Lcom/android/internal/custom/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcom/android/internal/custom/hardware/LiveDisplayManager;->getMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mValues:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    :catch_0
    const/4 v0, 0x2

    .line 176
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mValues:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    :catchall_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mValues:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private updateEntries()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040454

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mTitle:Ljava/lang/String;

    const v1, 0x1070099

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mEntries:[Ljava/lang/String;

    const v1, 0x1070097

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mDescriptionEntries:[Ljava/lang/String;

    const v1, 0x1070096

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mAnnouncementEntries:[Ljava/lang/String;

    const v1, 0x107009b

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mValues:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mAnnouncementEntries:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->getCurrentModeIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 163
    sget-object p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->LIVEDISPLAY_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7cf

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 158
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x1040454

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->changeToNextMode()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 127
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 129
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mObserver:Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;->startObserving()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mObserver:Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile$LiveDisplayObserver;->endObserving()V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;Ljava/lang/Object;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->updateEntries()V

    if-nez p2, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->getCurrentModeIndex()I

    move-result p2

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;->mode:I

    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mTitle:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mEntries:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mEntryIconRes:[I

    aget p2, v0, p2

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 147
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mDescriptionEntries:[Ljava/lang/String;

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;->mode:I

    aget-object p2, p2, v0

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 148
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mLiveDisplay:Lcom/android/internal/custom/hardware/LiveDisplayManager;

    invoke-virtual {p0}, Lcom/android/internal/custom/hardware/LiveDisplayManager;->getMode()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mNightDisplayAvailable:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->mOutdoorModeAvailable:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;
    .locals 0

    .line 120
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LiveDisplayTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$LiveDisplayState;

    move-result-object p0

    return-object p0
.end method
