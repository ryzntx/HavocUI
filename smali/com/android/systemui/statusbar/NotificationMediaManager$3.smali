.class Lcom/android/systemui/statusbar/NotificationMediaManager$3;
.super Ljava/lang/Object;
.source "NotificationMediaManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationMediaManager;-><init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/MediaArtworkProcessor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaFeatureFlag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field final synthetic val$mediaDataManager:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/media/MediaDataManager;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->val$mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->findAndUpdateMediaNotifications()V

    return-void
.end method

.method public onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->findAndUpdateMediaNotifications()V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$500(Lcom/android/systemui/statusbar/NotificationMediaManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$600(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$700(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$500(Lcom/android/systemui/statusbar/NotificationMediaManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$600(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->val$mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/media/MediaDataManager;->onNotificationAdded(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 238
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->val$mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/media/MediaDataManager;->onNotificationAdded(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
