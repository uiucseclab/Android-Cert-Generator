.class public final Ldagger/internal/codegen/GraphVisualizer;
.super Ljava/lang/Object;
.source "GraphVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/codegen/GraphVisualizer$1;,
        Ldagger/internal/codegen/GraphVisualizer$BindingComparator;
    }
.end annotation


# static fields
.field private static final KEY_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "(?:@(?:[\\w$]+\\.)*([\\w$]+)(?:\\(.*\\))?/)?(?:members/)?(?:[\\w$]+\\.)*([\\w$]+)(\\<[^/]+\\>)?((\\[\\])*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldagger/internal/codegen/GraphVisualizer;->KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method private buildNamesIndex(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;>;)",
            "Ljava/util/Map",
            "<",
            "Ldagger/internal/Binding",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 70
    .local v8, "shortNameToBinding":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 71
    .local v3, "collisions":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 72
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 73
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 74
    .local v0, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {p0, v6}, Ldagger/internal/codegen/GraphVisualizer;->shortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "shortName":Ljava/lang/String;
    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldagger/internal/Binding;

    .line 76
    .local v2, "collision":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    if-eqz v2, :cond_0

    if-eq v2, v0, :cond_0

    .line 77
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v0    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .end local v2    # "collision":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "shortName":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 84
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 85
    .restart local v0    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 86
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 87
    .restart local v6    # "key":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ldagger/internal/codegen/GraphVisualizer;->shortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .restart local v7    # "shortName":Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {v8, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 94
    .end local v0    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "shortName":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    .local v1, "bindingToName":Ljava/util/Map;, "Ljava/util/Map<Ldagger/internal/Binding<*>;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 96
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 99
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    :cond_4
    return-object v1
.end method


# virtual methods
.method shortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v6, Ldagger/internal/codegen/GraphVisualizer;->KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 104
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 105
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "annotationSimpleName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 109
    const/16 v6, 0x40

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "simpleName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "typeParameters":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 117
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "arrays":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public write(Ljava/util/Map;Ldagger/internal/codegen/GraphVizWriter;)V
    .locals 13
    .param p2, "writer"    # Ldagger/internal/codegen/GraphVizWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ldagger/internal/codegen/GraphVizWriter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    const/4 v12, 0x0

    .line 48
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVisualizer;->buildNamesIndex(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 50
    .local v4, "namesIndex":Ljava/util/Map;, "Ljava/util/Map<Ldagger/internal/Binding<*>;Ljava/lang/String;>;"
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "concentrate"

    aput-object v10, v9, v12

    const/4 v10, 0x1

    const-string v11, "true"

    aput-object v11, v9, v10

    invoke-virtual {p2, v9}, Ldagger/internal/codegen/GraphVizWriter;->beginGraph([Ljava/lang/String;)V

    .line 51
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ldagger/internal/Binding<*>;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldagger/internal/Binding;

    .line 53
    .local v5, "sourceBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 54
    .local v6, "sourceName":Ljava/lang/String;
    new-instance v0, Ljava/util/TreeSet;

    new-instance v9, Ldagger/internal/codegen/GraphVisualizer$BindingComparator;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ldagger/internal/codegen/GraphVisualizer$BindingComparator;-><init>(Ldagger/internal/codegen/GraphVisualizer$1;)V

    invoke-direct {v0, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 55
    .local v0, "dependencies":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    invoke-virtual {v5, v0, v0}, Ldagger/internal/Binding;->getDependencies(Ljava/util/Set;Ljava/util/Set;)V

    .line 56
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldagger/internal/Binding;

    .line 57
    .local v7, "targetBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 58
    .local v8, "targetName":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unbound:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 61
    :cond_1
    new-array v9, v12, [Ljava/lang/String;

    invoke-virtual {p2, v6, v8, v9}, Ldagger/internal/codegen/GraphVizWriter;->edge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0    # "dependencies":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ldagger/internal/Binding<*>;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sourceBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .end local v6    # "sourceName":Ljava/lang/String;
    .end local v7    # "targetBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .end local v8    # "targetName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ldagger/internal/codegen/GraphVizWriter;->endGraph()V

    .line 65
    return-void
.end method
