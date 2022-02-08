.class Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$2;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.source "SolidLineRenderer.java"


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
.method constructor <init>(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "-this"    # Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;
    .param p2, "-obj"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    .line 81
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$2;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    .line 82
    return-void
.end method


# virtual methods
.method public onUpdateNavigationBarIconColor(II)V
    .locals 1
    .param p1, "previousColor"    # I
    .param p2, "color"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$2;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    invoke-static {v0, p2}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->-set6(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$2;->this$0:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->-wrap0(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;)V

    .line 89
    return-void
.end method
