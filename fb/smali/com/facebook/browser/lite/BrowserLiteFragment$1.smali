.class final Lcom/facebook/browser/lite/BrowserLiteFragment$1;
.super Ljava/util/HashMap;
.source "publish_result_history"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 116
    const-string v0, "Referer"

    const-string v1, "http://m.facebook.com"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/browser/lite/BrowserLiteFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method
