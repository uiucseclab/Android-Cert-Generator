.class public Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
.super Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.source "SimpleBeanPropertyDefinition.java"


# instance fields
.field protected final _introspector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final _member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field protected final _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/String;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/String;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/String;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;-><init>()V

    .line 52
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_introspector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 53
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 54
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p1, v2, v0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/String;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    goto :goto_0
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v1, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/String;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    .line 194
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_introspector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_introspector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    goto :goto_0
.end method

.method public hasConstructorParameter()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    return v0
.end method

.method public hasField()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    return v0
.end method

.method public hasGetter()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetter()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExplicitlyIncluded()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v0

    return-object v0
.end method

.method public withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_introspector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-direct {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/String;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    move-object p0, v0

    goto :goto_0
.end method
