.class Lcom/google/android/systemui/assist/OpaLayout$Dsb;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "Dsb"
.end annotation


# instance fields
.field private final this$0:Lcom/google/android/systemui/assist/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$Dsb;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    return-void
.end method


# virtual methods
.method public onUpdateNavigationBarIconColor(II)V
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout$Dsb;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    iput p2, v0, Lcom/google/android/systemui/assist/OpaLayout;->mOverrideIconColor:I

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout$Dsb;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/OpaLayout;->apdetOpaLayout()V

    return-void
.end method
