.class Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;
.super Ljava/lang/Object;
.source "NotificationConversationInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateChannelRunnable"
.end annotation


# instance fields
.field private final mAction:I

.field private final mAppPkg:Ljava/lang/String;

.field private final mAppUid:I

.field private mChannelToUpdate:Landroid/app/NotificationChannel;

.field private final mINotificationManager:Landroid/app/INotificationManager;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;Landroid/app/INotificationManager;Ljava/lang/String;IILandroid/app/NotificationChannel;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 681
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    .line 682
    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    .line 683
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 684
    iput p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAction:I

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$900(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$800(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleController;->onUserChangedImportance(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$NotificationConversationInfo$UpdateChannelRunnable()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 690
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAction:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/16 v4, -0x3e8

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 716
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    goto :goto_0

    .line 692
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$700(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)I

    move-result v0

    if-nez v0, :cond_4

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    invoke-interface {v0, v2, v4, v3}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 699
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$UpdateChannelRunnable$_TdB-ndU_iWORDLe32ALCWoJYfU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$UpdateChannelRunnable$_TdB-ndU_iWORDLe32ALCWoJYfU;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->post(Ljava/lang/Runnable;)Z

    .line 703
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 704
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v2

    .line 703
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    goto :goto_0

    .line 707
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 708
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v3

    .line 707
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 726
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-interface {v0, v1, v2, p0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "ConversationGuts"

    const-string v1, "Unable to update notification channel"

    .line 729
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
