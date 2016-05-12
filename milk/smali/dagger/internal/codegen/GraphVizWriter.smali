.class public final Ldagger/internal/codegen/GraphVizWriter;
.super Ljava/lang/Object;
.source "GraphVizWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "


# instance fields
.field private final generatedNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private indent:I

.field private nextName:I

.field private final out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Ldagger/internal/codegen/GraphVizWriter;->nextName:I

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->generatedNames:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    .line 41
    return-void
.end method

.method private attributes([Ljava/lang/String;)V
    .locals 3
    .param p1, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    array-length v1, p1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    return-void

    .line 97
    :cond_1
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 98
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 99
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 100
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Ldagger/internal/codegen/GraphVizWriter;->literal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 98
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private indent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    if-ge v0, v1, :cond_0

    .line 136
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method private inlineAttributes([Ljava/lang/String;)V
    .locals 3
    .param p1, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    array-length v1, p1

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 109
    :cond_0
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 110
    :cond_1
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 112
    if-eqz v0, :cond_2

    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    :cond_2
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Ldagger/internal/codegen/GraphVizWriter;->literal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 117
    :cond_3
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private literal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "\\w+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "raw":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "raw":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private nextName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldagger/internal/codegen/GraphVizWriter;->nextName:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldagger/internal/codegen/GraphVizWriter;->nextName:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private nodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v1, "\\w+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->generatedNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "generatedName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 124
    const-string v1, "n"

    invoke-direct {p0, v1}, Ldagger/internal/codegen/GraphVizWriter;->nextName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Ldagger/internal/codegen/GraphVizWriter;->generatedNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "label"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Ldagger/internal/codegen/GraphVizWriter;->node(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs beginGraph([Ljava/lang/String;)V
    .locals 4
    .param p1, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 45
    iget v2, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    if-nez v2, :cond_0

    const-string v1, "digraph "

    .line 46
    .local v1, "type":Ljava/lang/String;
    :goto_0
    iget v2, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    if-nez v2, :cond_1

    const-string v2, "G"

    :goto_1
    invoke-direct {p0, v2}, Ldagger/internal/codegen/GraphVizWriter;->nextName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v3, " {\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 50
    iget v2, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    .line 51
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVizWriter;->attributes([Ljava/lang/String;)V

    .line 52
    return-void

    .line 45
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    const-string v1, "subgraph "

    goto :goto_0

    .line 46
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1
    const-string v2, "cluster"

    goto :goto_1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 146
    return-void
.end method

.method public varargs edge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVizWriter;->nodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-direct {p0, p2}, Ldagger/internal/codegen/GraphVizWriter;->nodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 72
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p3}, Ldagger/internal/codegen/GraphVizWriter;->inlineAttributes([Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public varargs edgeDefaults([Ljava/lang/String;)V
    .locals 2
    .param p1, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    array-length v0, p1

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 90
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, "edge"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVizWriter;->inlineAttributes([Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endGraph()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget v0, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldagger/internal/codegen/GraphVizWriter;->indent:I

    .line 56
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 57
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public varargs node(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVizWriter;->nodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 63
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p2}, Ldagger/internal/codegen/GraphVizWriter;->inlineAttributes([Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public varargs nodeDefaults([Ljava/lang/String;)V
    .locals 2
    .param p1, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    array-length v0, p1

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVizWriter;->indent()V

    .line 82
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, "node"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVizWriter;->inlineAttributes([Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Ldagger/internal/codegen/GraphVizWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
