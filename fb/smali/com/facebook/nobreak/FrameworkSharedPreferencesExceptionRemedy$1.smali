.class Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy$1;
.super Ljava/lang/Object;
.source "video_player_service_disconnected"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;


# direct methods
.method constructor <init>(Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy$1;->a:Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
