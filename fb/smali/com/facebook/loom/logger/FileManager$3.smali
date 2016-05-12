.class Lcom/facebook/loom/logger/FileManager$3;
.super Ljava/lang/Object;
.source "unset"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/loom/logger/FileManager;


# direct methods
.method constructor <init>(Lcom/facebook/loom/logger/FileManager;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/loom/logger/FileManager$3;->a:Lcom/facebook/loom/logger/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 160
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
