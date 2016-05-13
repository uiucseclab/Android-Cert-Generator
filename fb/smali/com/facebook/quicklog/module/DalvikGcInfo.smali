.class public Lcom/facebook/quicklog/module/DalvikGcInfo;
.super Ljava/lang/Object;
.source "u"


# instance fields
.field private final a:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;


# direct methods
.method public constructor <init>(Lcom/facebook/dalvikgc/DalvikGcInstrumentation;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/facebook/quicklog/module/DalvikGcInfo;->a:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/quicklog/module/DalvikGcInfo;->a:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    invoke-virtual {v0}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->a()J

    move-result-wide v0

    return-wide v0
.end method
