.class Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;
.super Landroid/app/AppLockManager$AppLockCallback;
.source "NotificationEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-direct {p0}, Landroid/app/AppLockManager$AppLockCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateChanged(Ljava/lang/String;)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$000(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v2, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$100(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method
