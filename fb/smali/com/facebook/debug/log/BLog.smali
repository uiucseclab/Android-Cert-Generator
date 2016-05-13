.class public Lcom/facebook/debug/log/BLog;
.super Ljava/lang/Object;
.source "user_setting_off"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StringFormatUse",
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# static fields
.field private static a:Lcom/facebook/common/logging/LoggingDelegate;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/debug/log/BLogLevelCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/facebook/debug/log/DefaultLoggingDelegate;->a()Lcom/facebook/common/logging/LoggingDelegate;

    move-result-object v0

    sput-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/debug/log/BLog;->b:Ljava/util/List;

    .line 64
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->a(I)V

    .line 65
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->a(Lcom/facebook/common/logging/LoggingDelegate;)V

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0}, Lcom/facebook/common/logging/LoggingDelegate;->b()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(I)V
    .locals 3

    .prologue
    .line 69
    const-class v1, Lcom/facebook/debug/log/BLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0}, Lcom/facebook/common/logging/LoggingDelegate;->a(I)V

    .line 70
    sget-object v0, Lcom/facebook/debug/log/BLog;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/log/BLogLevelCallback;

    .line 71
    invoke-interface {v0, p0}, Lcom/facebook/debug/log/BLogLevelCallback;->onLogLevelChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 73
    :cond_0
    monitor-exit v1

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 996
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_0
    return-void
.end method

.method public static a(Lcom/facebook/common/logging/LoggingDelegate;)V
    .locals 1

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    invoke-static {}, Lcom/facebook/debug/log/DefaultLoggingDelegate;->a()Lcom/facebook/common/logging/LoggingDelegate;

    move-result-object p0

    .line 91
    :cond_0
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0}, Lcom/facebook/common/logging/LoggingDelegate;->b()I

    move-result v0

    .line 92
    sput-object p0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 93
    invoke-interface {p0, v0}, Lcom/facebook/common/logging/LoggingDelegate;->a(I)V

    .line 94
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->a(Lcom/facebook/common/logging/LoggingDelegate;)V

    .line 95
    return-void
.end method

.method public static declared-synchronized a(Lcom/facebook/debug/log/BLogLevelCallback;)V
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/facebook/debug/log/BLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/debug/log/BLog;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v1

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 668
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 754
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 711
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 726
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 729
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 655
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 740
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 743
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 682
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 697
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 700
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 780
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 866
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 869
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 823
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 838
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 767
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 852
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 855
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 794
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 809
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 812
    :cond_0
    return-void
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 895
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 990
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 993
    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 942
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 959
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 962
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 880
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 974
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 977
    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 910
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 926
    sget-object v0, Lcom/facebook/debug/log/BLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/debug/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 929
    :cond_0
    return-void
.end method
