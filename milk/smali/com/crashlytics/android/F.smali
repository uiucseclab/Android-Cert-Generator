.class final Lcom/crashlytics/android/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/v;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1883
    iput-object p2, p0, Lcom/crashlytics/android/F;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/crashlytics/android/F;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
