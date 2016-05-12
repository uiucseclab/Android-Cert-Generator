.class public Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;
.super Lcom/samsung/milk/milkvideo/notifications/GeneralNotificationBuilder;
.source "GeneralIconNotificationBuilder.java"


# instance fields
.field private final picasso:Lcom/squareup/picasso/Picasso;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "picasso"    # Lcom/squareup/picasso/Picasso;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/samsung/milk/milkvideo/notifications/GeneralNotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 20
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;->picasso:Lcom/squareup/picasso/Picasso;

    .line 21
    return-void
.end method


# virtual methods
.method protected decorateNotification(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    const v5, 0x7f0200a5

    .line 24
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;->extras:Landroid/os/Bundle;

    const-string v4, "icon_url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "iconUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    .local v1, "iconBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    return-object v3

    .line 31
    .end local v1    # "iconBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    .restart local v1    # "iconBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "iconBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
