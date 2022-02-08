.class Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;
.super Ljava/util/TimerTask;
.source "NavigationHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurnInProtectionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Lcom/android/systemui/statusbar/phone/NavigationHandle$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;)V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$NavigationHandle$BurnInProtectionTask()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$000(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$100(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v1

    if-nez v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$102(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$100(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    neg-int v0, v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$102(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$102(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationHandle$BurnInProtectionTask$lCNKZW8BG0QuOZIsQORUlrHwZOE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationHandle$BurnInProtectionTask$lCNKZW8BG0QuOZIsQORUlrHwZOE;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
