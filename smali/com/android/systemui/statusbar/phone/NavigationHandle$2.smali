.class public Lcom/android/systemui/statusbar/phone/NavigationHandle$2;
.super Ljava/lang/Object;
.source "NavigationHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "2"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

.field private final val$targetColor:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Ljava/lang/Object;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->val$targetColor:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$3(Lcom/android/systemui/statusbar/phone/NavigationHandle;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$3(Lcom/android/systemui/statusbar/phone/NavigationHandle;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mNavigationEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->val$targetColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 167
    :goto_1
    return-void

    .line 163
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$3(Lcom/android/systemui/statusbar/phone/NavigationHandle;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->val$targetColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method
