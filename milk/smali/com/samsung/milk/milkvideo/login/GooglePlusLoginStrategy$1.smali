.class Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;
.super Ljava/lang/Object;
.source "GooglePlusLoginStrategy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/LoginRequestedEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/LoginRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$000(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # invokes: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->resolveGoogleSignInError()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$100(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    .line 70
    :cond_0
    return-void
.end method
