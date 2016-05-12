.class public Lcom/facebook/rti/mqtt/common/hardware/BatteryState;
.super Ljava/lang/Object;
.source "sigmux"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZLcom/facebook/rti/common/guavalite/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->a:Z

    .line 15
    iput-boolean p2, p0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->b:Z

    .line 16
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->c:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 17
    return-void
.end method
