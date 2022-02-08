.class Lcom/google/android/systemui/assist/OpaLayout$1;
.super Ljava/lang/Object;
.source "OpaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$1;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout$1;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    const-string v1, "retract"

    invoke-static {v0, v1}, Lcom/google/android/systemui/assist/OpaLayout;->access$000(Lcom/google/android/systemui/assist/OpaLayout;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$1;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaLayout;->access$100(Lcom/google/android/systemui/assist/OpaLayout;)V

    return-void
.end method
