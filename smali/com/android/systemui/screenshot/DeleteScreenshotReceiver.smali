.class public Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeleteScreenshotReceiver.java"


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotSmartActions;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android:screenshot_uri_id"

    .line 55
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->cancelScreenshotNotification(Landroid/content/Context;)V

    .line 61
    sget v1, Lcom/android/systemui/R$string;->delete_screenshot_toast:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 64
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/screenshot/-$$Lambda$DeleteScreenshotReceiver$8T6qjIyzfi2xu3aeOTlc0JnzMU8;

    invoke-direct {v3, p1, v0}, Lcom/android/systemui/screenshot/-$$Lambda$DeleteScreenshotReceiver$8T6qjIyzfi2xu3aeOTlc0JnzMU8;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v0, "android:smart_actions_enabled"

    .line 69
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object p0, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    const-string v0, "android:screenshot_id"

    .line 71
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Delete"

    .line 70
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->notifyScreenshotAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
