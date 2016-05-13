.class public Lcom/facebook/katana/app/FacebookApplicationImpl$3;
.super Ljava/lang/Object;
.source "width"


# instance fields
.field final synthetic a:Lcom/facebook/perf/StartupPerfLogger;

.field final synthetic b:Lcom/facebook/katana/app/FacebookApplicationImpl;


# direct methods
.method constructor <init>(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/perf/StartupPerfLogger;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$3;->b:Lcom/facebook/katana/app/FacebookApplicationImpl;

    iput-object p2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$3;->a:Lcom/facebook/perf/StartupPerfLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;JJZLcom/facebook/base/lwperf/perfstats/PerfStats;)V
    .locals 11

    .prologue
    .line 299
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$3;->a:Lcom/facebook/perf/StartupPerfLogger;

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/facebook/katana/app/FacebookApplicationImpl;->a(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;Lcom/facebook/base/lwperf/perfstats/PerfStats;)V

    .line 307
    return-void
.end method
