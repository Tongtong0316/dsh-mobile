.class public final Lorg/apache/commons/io/function/Uncheck;
.super Ljava/lang/Object;
.source "Uncheck.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method

.method public static accept(Lorg/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOBiConsumer<",
            "TT;TU;>;TT;TU;)V"
        }
    .end annotation

    .line 43
    .local p0, "consumer":Lorg/apache/commons/io/function/IOBiConsumer;, "Lorg/apache/commons/io/function/IOBiConsumer<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/io/function/IOBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    nop

    .line 47
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 59
    .local p0, "consumer":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static accept(Lorg/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOTriConsumer<",
            "TT;TU;TV;>;TT;TU;TV;)V"
        }
    .end annotation

    .line 79
    .local p0, "consumer":Lorg/apache/commons/io/function/IOTriConsumer;, "Lorg/apache/commons/io/function/IOTriConsumer<TT;TU;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/io/function/IOTriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 83
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static apply(Lorg/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "TT;TU;TR;>;TT;TU;)TR;"
        }
    .end annotation

    .line 99
    .local p0, "function":Lorg/apache/commons/io/function/IOBiFunction;, "Lorg/apache/commons/io/function/IOBiFunction<TT;TU;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/io/function/IOBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 117
    .local p0, "function":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static apply(Lorg/apache/commons/io/function/IOQuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "W:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOQuadFunction<",
            "TT;TU;TV;TW;TR;>;TT;TU;TV;TW;)TR;"
        }
    .end annotation

    .line 141
    .local p0, "function":Lorg/apache/commons/io/function/IOQuadFunction;, "Lorg/apache/commons/io/function/IOQuadFunction<TT;TU;TV;TW;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    .local p4, "w":Ljava/lang/Object;, "TW;"
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/commons/io/function/IOQuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static apply(Lorg/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOTriFunction<",
            "TT;TU;TV;TR;>;TT;TU;TV;)TR;"
        }
    .end annotation

    .line 163
    .local p0, "function":Lorg/apache/commons/io/function/IOTriFunction;, "Lorg/apache/commons/io/function/IOTriFunction<TT;TU;TV;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/io/function/IOTriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static compare(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOComparator<",
            "TT;>;TT;TT;)I"
        }
    .end annotation

    .line 181
    .local p0, "comparator":Lorg/apache/commons/io/function/IOComparator;, "Lorg/apache/commons/io/function/IOComparator<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "u":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/io/function/IOComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 197
    .local p0, "supplier":Lorg/apache/commons/io/function/IOSupplier;, "Lorg/apache/commons/io/function/IOSupplier<TT;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSupplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static get(Lorg/apache/commons/io/function/IOSupplier;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 214
    .local p0, "supplier":Lorg/apache/commons/io/function/IOSupplier;, "Lorg/apache/commons/io/function/IOSupplier<TT;>;"
    .local p1, "message":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSupplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static getAsInt(Lorg/apache/commons/io/function/IOIntSupplier;)I
    .locals 2
    .param p0, "supplier"    # Lorg/apache/commons/io/function/IOIntSupplier;

    .line 230
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOIntSupplier;->getAsInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static getAsInt(Lorg/apache/commons/io/function/IOIntSupplier;Ljava/util/function/Supplier;)I
    .locals 2
    .param p0, "supplier"    # Lorg/apache/commons/io/function/IOIntSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOIntSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 247
    .local p1, "message":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOIntSupplier;->getAsInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static getAsLong(Lorg/apache/commons/io/function/IOLongSupplier;)J
    .locals 2
    .param p0, "supplier"    # Lorg/apache/commons/io/function/IOLongSupplier;

    .line 263
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOLongSupplier;->getAsLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static getAsLong(Lorg/apache/commons/io/function/IOLongSupplier;Ljava/util/function/Supplier;)J
    .locals 2
    .param p0, "supplier"    # Lorg/apache/commons/io/function/IOLongSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOLongSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 280
    .local p1, "message":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOLongSupplier;->getAsLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static run(Lorg/apache/commons/io/function/IORunnable;)V
    .locals 2
    .param p0, "runnable"    # Lorg/apache/commons/io/function/IORunnable;

    .line 294
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IORunnable;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    nop

    .line 298
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static run(Lorg/apache/commons/io/function/IORunnable;Ljava/util/function/Supplier;)V
    .locals 2
    .param p0, "runnable"    # Lorg/apache/commons/io/function/IORunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IORunnable;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p1, "message":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/function/IORunnable;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    nop

    .line 314
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method public static test(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOPredicate<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 326
    .local p0, "predicate":Lorg/apache/commons/io/function/IOPredicate;, "Lorg/apache/commons/io/function/IOPredicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/io/function/IOPredicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object v1

    throw v1
.end method

.method private static wrap(Ljava/io/IOException;)Ljava/io/UncheckedIOException;
    .locals 1
    .param p0, "e"    # Ljava/io/IOException;

    .line 339
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    return-object v0
.end method

.method private static wrap(Ljava/io/IOException;Ljava/util/function/Supplier;)Ljava/io/UncheckedIOException;
    .locals 2
    .param p0, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/IOException;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/UncheckedIOException;"
        }
    .end annotation

    .line 350
    .local p1, "message":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    return-object v0
.end method
