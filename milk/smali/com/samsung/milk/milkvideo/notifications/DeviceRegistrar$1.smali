.class Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$1;
.super Lretrofit/ResponseCallback;
.source "DeviceRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->registerUserForNotifications(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

.field final synthetic val$registrationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$1;->this$0:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$1;->val$registrationId:Ljava/lang/String;

    invoke-direct {p0}, Lretrofit/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0
    .param p1, "retrofitError"    # Lretrofit/RetrofitError;

    .prologue
    .line 112
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 2
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$1;->this$0:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$1;->val$registrationId:Ljava/lang/String;

    # invokes: Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->persistRegistrationId(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->access$300(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;Ljava/lang/String;)V

    .line 108
    return-void
.end method
