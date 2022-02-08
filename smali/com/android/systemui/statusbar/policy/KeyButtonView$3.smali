.class Lcom/android/systemui/statusbar/policy/KeyButtonView$3;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.source "KeyButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "3"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    return-void
.end method


# virtual methods
.method public onUpdateNavigationBarIconColor(II)V
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverrideIconColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->apdetKeyButtonView()V

    return-void
.end method
