.class Lcom/google/android/systemui/smartspace/SmartSpaceController$1;
.super Ljava/lang/Object;
.source "SmartSpaceController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/SmartSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    return-void
.end method
