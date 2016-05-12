.class Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;
.super Ljava/lang/Object;
.source "GooglePlusLoginStrategy.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleOnConnectionFailedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;-><init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v2, 0x0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionFailed: ConnectionResult.getErrorCode() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 301
    const-string v0, "Google Play API failure: not available"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # invokes: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->resetGoogleLogin()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$200(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    .line 317
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginState:I
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$800(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    # setter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginIntent:Landroid/app/PendingIntent;
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$902(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 307
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    # setter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginError:I
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$302(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;I)I

    .line 309
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginState:I
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$800(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # invokes: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->resolveGoogleSignInError()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$100(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    goto :goto_0
.end method
