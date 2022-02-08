.class public Lcom/android/systemui/media/NotificationPlayer;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/NotificationPlayer$CmdThread;,
        Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;,
        Lcom/android/systemui/media/NotificationPlayer$Command;
    }
.end annotation


# instance fields
.field private mAudioManagerWithAudioFocus:Landroid/media/AudioManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueAudioFocusLock"
        }
    .end annotation
.end field

.field private final mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/systemui/media/NotificationPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletionHandlingLock:Ljava/lang/Object;

.field private mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCompletionHandlingLock"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCompletionHandlingLock"
        }
    .end annotation
.end field

.field private mNotificationRampTimeMs:I

.field private mPlayer:Landroid/media/MediaPlayer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPlayerLock"
        }
    .end annotation
.end field

.field private final mPlayerLock:Ljava/lang/Object;

.field private final mQueueAudioFocusLock:Ljava/lang/Object;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCmdQueue"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCmdQueue"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    .line 329
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayerLock:Ljava/lang/Object;

    .line 337
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 341
    iput v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mNotificationRampTimeMs:I

    const/4 v0, 0x2

    .line 345
    iput v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    if-eqz p1, :cond_0

    .line 354
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "NotificationPlayer"

    .line 356
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private abandonAudioFocusAfterError()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 172
    iput-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    .line 174
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic access$000(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/media/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$CmdThread;)Lcom/android/systemui/media/NotificationPlayer$CmdThread;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/media/NotificationPlayer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/media/NotificationPlayer;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/media/NotificationPlayer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mNotificationRampTimeMs:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/media/NotificationPlayer;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mNotificationRampTimeMs:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/media/NotificationPlayer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/media/NotificationPlayer;->abandonAudioFocusAfterError()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/media/NotificationPlayer;->startSound(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCmdQueue"
        }
    .end annotation

    .line 476
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_0

    .line 477
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCmdQueue"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    if-nez p1, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/media/NotificationPlayer;->acquireWakeLock()V

    .line 443
    new-instance p1, Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;)V

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 444
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCmdQueue"
        }
    .end annotation

    .line 483
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_0

    .line 484
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private startSound(Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 5

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    .line 191
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 195
    :cond_0
    new-instance v1, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V

    iput-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    .line 196
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 198
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 199
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification sound delayed by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "msecs"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 199
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :catchall_1
    move-exception v1

    .line 200
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error loading sound for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 289
    iput-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    .line 293
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 295
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 298
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 299
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_1

    .line 301
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 303
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    .line 305
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 307
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_4
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v1, :cond_3

    .line 309
    iput-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 311
    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_4

    .line 313
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 311
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 305
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0

    :catchall_2
    move-exception p0

    .line 306
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 293
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (extra="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") playing notification"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/NotificationPlayer;->onCompletion(Landroid/media/MediaPlayer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    .locals 3

    .line 406
    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>(Lcom/android/systemui/media/NotificationPlayer$1;)V

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    const/4 v1, 0x1

    .line 408
    iput v1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    .line 409
    iput-object p1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    .line 410
    iput-object p2, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 411
    iput-boolean p3, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    .line 412
    iput-object p4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    .line 413
    iget-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter p1

    .line 414
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/media/NotificationPlayer;->enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    .line 415
    iput v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    .line 416
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    if-nez v1, :cond_0

    const-string v1, "power"

    .line 469
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 470
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 471
    monitor-exit v0

    return-void

    .line 466
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertion failed mWakeLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 471
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 5

    .line 425
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 428
    :try_start_0
    iget v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 429
    new-instance v1, Lcom/android/systemui/media/NotificationPlayer$Command;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>(Lcom/android/systemui/media/NotificationPlayer$1;)V

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    .line 431
    iput v2, v1, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    .line 432
    invoke-direct {p0, v1}, Lcom/android/systemui/media/NotificationPlayer;->enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    .line 433
    iput v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    .line 435
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
