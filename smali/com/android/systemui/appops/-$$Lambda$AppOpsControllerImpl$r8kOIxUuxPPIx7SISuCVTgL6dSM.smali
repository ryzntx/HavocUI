.class public final synthetic Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;->f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    iput p2, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;->f$1:I

    iput p3, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;->f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    iget v1, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;->f$1:I

    iget v2, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;->f$3:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$r8kOIxUuxPPIx7SISuCVTgL6dSM;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->lambda$notifySuscribers$1$AppOpsControllerImpl(IILjava/lang/String;Z)V

    return-void
.end method
