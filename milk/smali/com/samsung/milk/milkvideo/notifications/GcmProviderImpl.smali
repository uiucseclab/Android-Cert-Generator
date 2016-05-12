.class public Lcom/samsung/milk/milkvideo/notifications/GcmProviderImpl;
.super Ljava/lang/Object;
.source "GcmProviderImpl.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/notifications/GcmProvider;


# static fields
.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328


# instance fields
.field private final gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmProviderImpl;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 19
    return-void
.end method


# virtual methods
.method public checkPlayServices(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 34
    .local v0, "resultCode":I
    if-eqz v0, :cond_0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This device will not receive notifications because Google Play Services is not available... Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMessageType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmProviderImpl;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeletedMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageType"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "deleted_messages"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isErrorMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageType"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "send_error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageType"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "gcm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public register(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "senderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmProviderImpl;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
