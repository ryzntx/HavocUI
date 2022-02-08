.class public Lcom/android/systemui/qs/tiles/CaffeineTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CaffeineTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static DURATIONS:[I

.field private static final INFINITE_DURATION_INDEX:I


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDuration:I

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public mLastClickTime:J

.field private final mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

.field private mSecondsRemaining:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    .line 54
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->INFINITE_DURATION_INDEX:I

    return-void

    :array_0
    .array-data 4
        0x12c
        0x258
        0x708
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 43
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_caffeine:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    .line 57
    new-instance v0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;-><init>(Lcom/android/systemui/qs/tiles/CaffeineTile;Lcom/android/systemui/qs/tiles/CaffeineTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/16 v0, 0x1a

    const-string v1, "CaffeineTile"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->init()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/CaffeineTile;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/CaffeineTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/CaffeineTile;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    return-void
.end method

.method private formatValueWithRemainingTime()Ljava/lang/String;
    .locals 3

    .line 187
    iget v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo p0, "\u221e"

    return-object p0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 190
    div-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget p0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%02d:%02d"

    .line 190
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startCountDown(J)V
    .locals 7

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    long-to-int v0, p1

    .line 156
    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;

    const-wide/16 v1, 0x3e8

    mul-long v3, p1, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/CaffeineTile$1;-><init>(Lcom/android/systemui/qs/tiles/CaffeineTile;JJ)V

    .line 176
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private stopCountDown()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7cf

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 146
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_caffeine_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleClick()V
    .locals 5

    .line 92
    sget-object v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 95
    iget v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 96
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 105
    :cond_0
    aget v0, v0, v1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->startCountDown(J)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v1, 0x0

    .line 117
    iput v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 118
    aget v0, v0, v1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->startCountDown(J)V

    .line 121
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method protected handleDestroy()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->destroy()V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    .line 132
    sget v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->INFINITE_DURATION_INDEX:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    if-ne v1, v0, :cond_1

    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 139
    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 140
    sget-object v1, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    aget v0, v1, v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->startCountDown(J)V

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    .line 196
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p2, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez p2, :cond_1

    .line 200
    new-instance p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {p2}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 202
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_caffeine_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 203
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 204
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->formatValueWithRemainingTime()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 207
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_caffeine_on:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const/4 p0, 0x2

    .line 209
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_0

    .line 211
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_caffeine_label_off:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 212
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_caffeine_off:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    .line 214
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_0
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CaffeineTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 70
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
