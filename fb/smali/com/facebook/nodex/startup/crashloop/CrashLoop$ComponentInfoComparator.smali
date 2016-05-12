.class Lcom/facebook/nodex/startup/crashloop/CrashLoop$ComponentInfoComparator;
.super Ljava/lang/Object;
.source "page_video_card"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ComponentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 329
    check-cast p1, Landroid/content/pm/ComponentInfo;

    check-cast p2, Landroid/content/pm/ComponentInfo;

    .line 333
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
