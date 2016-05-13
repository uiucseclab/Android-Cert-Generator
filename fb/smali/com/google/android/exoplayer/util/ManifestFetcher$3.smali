.class public Lcom/google/android/exoplayer/util/ManifestFetcher$3;
.super Ljava/lang/Object;
.source "persisted_uid"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/android/exoplayer/util/ManifestFetcher;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$3;->b:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iput-object p2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$3;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method
