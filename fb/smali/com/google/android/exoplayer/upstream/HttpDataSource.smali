.class public interface abstract Lcom/google/android/exoplayer/upstream/HttpDataSource;
.super Ljava/lang/Object;
.source "minidumps"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# static fields
.field public static final a:Lcom/google/android/exoplayer/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/exoplayer/upstream/HttpDataSource$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer/upstream/HttpDataSource$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->a:Lcom/google/android/exoplayer/util/Predicate;

    return-void
.end method
