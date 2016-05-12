.class public abstract Lcom/facebook/widget/FacebookDialog$Builder;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/FacebookDialog$Builder",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;

.field protected final appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field protected final applicationId:Ljava/lang/String;

.field protected applicationName:Ljava/lang/String;

.field protected fragment:Landroid/support/v4/app/Fragment;

.field protected imageAttachmentFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected imageAttachments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 553
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachmentFiles:Ljava/util/HashMap;

    .line 554
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    .line 557
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    .line 558
    new-instance v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    const v1, 0xfacf

    invoke-direct {v0, v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 559
    return-void
.end method


# virtual methods
.method protected addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    move-object v0, p0

    .line 778
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method protected addImageAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "attachment"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachmentFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    move-object v0, p0

    .line 785
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method protected addImageAttachmentFiles(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    .local p1, "bitmapFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v1, "attachmentUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 743
    .local v2, "bitmapFile":Ljava/io/File;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "attachmentName":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/facebook/widget/FacebookDialog$Builder;->addImageAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$Builder;

    .line 747
    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v6}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 749
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 752
    .end local v0    # "attachmentName":Ljava/lang/String;
    .end local v2    # "bitmapFile":Ljava/io/File;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected addImageAttachments(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    .local p1, "bitmaps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v1, "attachmentUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 728
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "attachmentName":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/facebook/widget/FacebookDialog$Builder;->addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/widget/FacebookDialog$Builder;

    .line 732
    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v6}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 734
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    .end local v0    # "attachmentName":Ljava/lang/String;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public build()Lcom/facebook/widget/FacebookDialog;
    .locals 13

    .prologue
    .line 611
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->validate()V

    .line 613
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v0

    # invokes: Lcom/facebook/widget/FacebookDialog;->getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog;->access$100(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    .line 615
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v4

    # invokes: Lcom/facebook/widget/FacebookDialog;->getVersionSpecForFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I
    invoke-static {v1, v2, v4}, Lcom/facebook/widget/FacebookDialog;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I

    move-result-object v1

    .line 614
    # invokes: Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;[I)I
    invoke-static {v0, v2, v1}, Lcom/facebook/widget/FacebookDialog;->access$300(Landroid/content/Context;Ljava/lang/String;[I)I

    move-result v3

    .line 617
    .local v3, "protocolVersion":I
    const/4 v5, 0x0

    .line 618
    .local v5, "extras":Landroid/os/Bundle;
    invoke-static {v3}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getMethodArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 626
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 628
    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    .line 626
    invoke-static/range {v0 .. v5}, Lcom/facebook/internal/NativeProtocol;->createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v12

    .line 633
    .local v12, "intent":Landroid/content/Intent;
    if-nez v12, :cond_1

    .line 634
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    const-string v4, "com.facebook.platform.extra.PHOTOS"

    .line 635
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    # invokes: Lcom/facebook/widget/FacebookDialog;->getEventName(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/facebook/widget/FacebookDialog;->access$400(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Failed"

    .line 634
    # invokes: Lcom/facebook/widget/FacebookDialog;->logDialogActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v4, v6}, Lcom/facebook/widget/FacebookDialog;->access$500(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to create Intent; this likely means the Facebook app is not installed."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/widget/FacebookDialog$Builder;->setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    .line 642
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    # invokes: Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestIntent(Landroid/content/Intent;)V
    invoke-static {v0, v12}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$600(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/content/Intent;)V

    .line 644
    new-instance v6, Lcom/facebook/widget/FacebookDialog;

    iget-object v7, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v9, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;Lcom/facebook/widget/FacebookDialog$1;)V

    return-object v6
.end method

.method public canPresent()Z
    .locals 2

    .prologue
    .line 703
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v1

    # invokes: Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->access$800(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method protected abstract getDialogFeatures()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;"
        }
    .end annotation
.end method

.method getImageAttachmentNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected abstract getMethodArguments()Landroid/os/Bundle;
.end method

.method getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
    .locals 1

    .prologue
    .line 710
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    new-instance v0, Lcom/facebook/widget/FacebookDialog$Builder$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/FacebookDialog$Builder$1;-><init>(Lcom/facebook/widget/FacebookDialog$Builder;)V

    return-object v0
.end method

.method protected getWebFallbackUrlInternal()Ljava/lang/String;
    .locals 13

    .prologue
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    const/4 v9, 0x0

    .line 652
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v5

    .line 653
    .local v5, "features":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/facebook/widget/FacebookDialog$DialogFeature;>;"
    const/4 v4, 0x0

    .line 654
    .local v4, "featureName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 655
    .local v0, "action":Ljava/lang/String;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/widget/FacebookDialog$DialogFeature;

    .line 658
    .local v3, "feature":Lcom/facebook/widget/FacebookDialog$DialogFeature;
    invoke-interface {v3}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->name()Ljava/lang/String;

    move-result-object v4

    .line 659
    invoke-interface {v3}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 663
    .end local v3    # "feature":Lcom/facebook/widget/FacebookDialog$DialogFeature;
    :cond_0
    iget-object v10, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    invoke-static {v10, v0, v4}, Lcom/facebook/internal/Utility;->getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/Utility$DialogFeatureConfig;

    move-result-object v1

    .line 665
    .local v1, "config":Lcom/facebook/internal/Utility$DialogFeatureConfig;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/internal/Utility$DialogFeatureConfig;->getFallbackUrl()Landroid/net/Uri;

    move-result-object v2

    .local v2, "fallbackUrl":Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 692
    .end local v2    # "fallbackUrl":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v9

    .line 671
    .restart local v2    # "fallbackUrl":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getMethodArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 672
    .local v6, "methodArguments":Landroid/os/Bundle;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v7

    .line 673
    .local v7, "protocolVersion":I
    iget-object v10, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v11, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 675
    invoke-virtual {v11}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    .line 673
    invoke-static {v10, v11, v7, v12, v6}, Lcom/facebook/internal/ServerProtocol;->getQueryParamsForPlatformActivityIntentWebFallback(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 679
    .local v8, "webParams":Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 685
    invoke-virtual {v2}, Landroid/net/Uri;->isRelative()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 687
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v9

    .line 688
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 686
    invoke-static {v9, v10, v8}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v2

    .line 692
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method protected putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 767
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    if-eqz p3, :cond_0

    .line 768
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_0
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    .line 585
    move-object v0, p0

    .line 586
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method protected setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 761
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    return-object p1
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    .line 600
    move-object v0, p0

    .line 601
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method public setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    # invokes: Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestCode(I)V
    invoke-static {v1, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$000(Lcom/facebook/widget/FacebookDialog$PendingCall;I)V

    .line 571
    move-object v0, p0

    .line 572
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method validate()V
    .locals 0

    .prologue
    .line 707
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    return-void
.end method
