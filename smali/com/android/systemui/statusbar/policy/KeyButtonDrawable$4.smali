.class Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$4;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "4"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    return-void
.end method


# virtual methods
.method public onUpdateNavigationBarIconColor(II)V
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mOverrideIconColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->apdetKeyButtonDrawable()V

    return-void
.end method
