.class Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;
.super Landroid/os/AsyncTask;
.source "DeviceRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GCMRegisterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;->this$0:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;-><init>(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;->this$0:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->gcm:Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    invoke-static {}, Lcom/samsung/milk/milkvideo/utils/Constants;->getGCMSenderID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/milk/milkvideo/notifications/GcmProvider;->register(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "regid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;->this$0:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    # invokes: Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->registerUserForNotifications(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->access$100(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "regid":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;->this$0:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    # getter for: Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->gcmRegistrationAttempts:I
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->access$200(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 82
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;->this$0:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    # operator++ for: Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->gcmRegistrationAttempts:I
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->access$208(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;)I

    .line 83
    new-instance v2, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;->this$0:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    invoke-direct {v2, v3}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;-><init>(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
