.class Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$3;
.super Ljava/lang/Object;
.source "SolidLineRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;)V
    .locals 0
    .param p1, "-this"    # Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$3;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    .line 92
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$3;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->-get10(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$3;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->access$jiamvut(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;)Z

    move-result v0

    if-eqz v2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$3;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->-get8(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$3;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    invoke-static {v1}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->-get10(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
