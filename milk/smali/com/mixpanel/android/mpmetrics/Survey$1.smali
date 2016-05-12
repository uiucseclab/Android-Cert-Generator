.class final Lcom/mixpanel/android/mpmetrics/Survey$1;
.super Ljava/lang/Object;
.source "Survey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/Survey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mixpanel/android/mpmetrics/Survey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mixpanel/android/mpmetrics/Survey;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-direct {v3, v1}, Lcom/mixpanel/android/mpmetrics/Survey;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mixpanel/android/mpmetrics/BadDecideObjectException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 29
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Corrupted JSON object written to survey parcel."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 31
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 32
    .local v0, "e":Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected or incomplete object written to survey parcel."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/mpmetrics/Survey$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mixpanel/android/mpmetrics/Survey;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 38
    new-array v0, p1, [Lcom/mixpanel/android/mpmetrics/Survey;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/mpmetrics/Survey$1;->newArray(I)[Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v0

    return-object v0
.end method
