.class Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;
.super Landroid/os/CountDownTimer;
.source "CategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentUpdateCountdownTimer"
.end annotation


# static fields
.field private static final TIME_TO_UPDATE:J = 0xfaL


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0xfa

    .line 176
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;->this$0:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    .line 177
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->canUpdateContent:Z

    .line 179
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;->this$0:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->canUpdateContent:Z

    .line 184
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 188
    return-void
.end method
