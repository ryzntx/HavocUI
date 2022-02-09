.class Lcom/android/systemui/statusbar/phone/NavigationHandle$4;
.super Ljava/lang/Object;
.source "NavigationHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "3"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

.field private final val$targetColor:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;->val$targetColor:I

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/NavigationHandle$4;)Lcom/android/systemui/statusbar/phone/NavigationHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->ena:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;->val$targetColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->invalidate()V

    .line 387
    :goto_1
    return-void

    .line 383
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;->val$targetColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method
