.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$FODCircleViewImpl$pDjh5TwRU6gna3d817raZBNYJSI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/FODCircleViewImplCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/FODCircleViewImplCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleViewImpl$pDjh5TwRU6gna3d817raZBNYJSI;->f$0:Lcom/android/systemui/biometrics/FODCircleViewImplCallback;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleViewImpl$pDjh5TwRU6gna3d817raZBNYJSI;->f$0:Lcom/android/systemui/biometrics/FODCircleViewImplCallback;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/FODCircleViewImpl;->lambda$removeCallback$0(Lcom/android/systemui/biometrics/FODCircleViewImplCallback;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
