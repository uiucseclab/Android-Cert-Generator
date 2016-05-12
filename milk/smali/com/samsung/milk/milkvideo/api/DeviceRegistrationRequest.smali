.class public Lcom/samsung/milk/milkvideo/api/DeviceRegistrationRequest;
.super Ljava/lang/Object;
.source "DeviceRegistrationRequest.java"


# instance fields
.field private newRegistrationId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gcm_registration_id"
    .end annotation
.end field

.field private oldRegistrationId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "old_gcm_registration_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "registrationId"    # Ljava/lang/String;
    .param p2, "oldRegistrationId"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/DeviceRegistrationRequest;->newRegistrationId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/api/DeviceRegistrationRequest;->oldRegistrationId:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getNewRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/DeviceRegistrationRequest;->newRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/DeviceRegistrationRequest;->oldRegistrationId:Ljava/lang/String;

    return-object v0
.end method
