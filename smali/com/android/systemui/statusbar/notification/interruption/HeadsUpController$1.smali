.class Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;
.super Ljava/lang/Object;
.source "HeadsUpController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onEntryAdded$0(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$500(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method


# virtual methods
.method public onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$000(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$HeadsUpController$1$KAqgh1j8KCQjqOCPlwm79iJxTXk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$HeadsUpController$1$KAqgh1j8KCQjqOCPlwm79iJxTXk;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->bindHeadsUpView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$200(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$200(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->tick(Landroid/service/notification/StatusBarNotification;ZZLandroid/media/MediaMetadata;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->abortBindCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$400(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$300(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
