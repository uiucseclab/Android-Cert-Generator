.class public Lcom/samsung/milk/milkvideo/notifications/IShouldFollowNotificationBuilder;
.super Lcom/samsung/milk/milkvideo/notifications/UserNavigatableNotificationBuilder;
.source "IShouldFollowNotificationBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "picasso"    # Lcom/squareup/picasso/Picasso;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/notifications/UserNavigatableNotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getUserUuidFromData(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "user_to_follow_uuid"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
