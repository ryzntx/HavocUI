.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationMediaManager$nnIjTOiS8mFcC6HYne2Yeu7pClQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationMediaManager$nnIjTOiS8mFcC6HYne2Yeu7pClQ;->f$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationMediaManager$nnIjTOiS8mFcC6HYne2Yeu7pClQ;->f$1:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationMediaManager$nnIjTOiS8mFcC6HYne2Yeu7pClQ;->f$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationMediaManager$nnIjTOiS8mFcC6HYne2Yeu7pClQ;->f$1:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->lambda$findAndUpdateMediaNotifications$0$NotificationMediaManager(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
