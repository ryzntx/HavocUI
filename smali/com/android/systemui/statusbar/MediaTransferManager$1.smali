.class Lcom/android/systemui/statusbar/MediaTransferManager$1;
.super Ljava/lang/Object;
.source "MediaTransferManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MediaTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MediaTransferManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MediaTransferManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager$1;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleMediaTransfer(Landroid/view/View;)Z
    .locals 1

    const v0, 0x1020368

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager$1;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    .line 74
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$000(Lcom/android/systemui/statusbar/MediaTransferManager;Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager$1;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$100(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Ljava/lang/String;Z)V

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MediaTransferManager$1;->handleMediaTransfer(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_0
    return-void
.end method
