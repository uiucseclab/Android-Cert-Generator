.class Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleConnectionCallbacks;
.super Ljava/lang/Object;
.source "GooglePlusLoginStrategy.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleConnectionCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleConnectionCallbacks;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleConnectionCallbacks;-><init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 266
    const-string v1, "Google onConnected"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    new-instance v0, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleConnectionCallbacks;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    new-instance v2, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleConnectionCallbacks;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;-><init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;-><init>(Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;Lcom/samsung/milk/milkvideo/runnables/GoogleLoginResultCallback;)V

    .line 269
    .local v0, "task":Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleConnectionCallbacks;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$000(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .param p1, "cause"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleConnectionCallbacks;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$000(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 278
    return-void
.end method
