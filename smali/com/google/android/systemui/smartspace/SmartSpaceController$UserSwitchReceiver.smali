.class Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/SmartSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/SmartSpaceController$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 67
    sget-boolean p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Switching user: "

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid: "

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmartSpaceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    const/4 v1, -0x1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    .line 77
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->clear()V

    .line 78
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    return-void
.end method
