
abstract class Failure {}

class ServerFailure extends Failure {}

class NetworkFailure extends Failure {}

class CacheGetFailure extends Failure {}

class NotFoundFailure extends Failure {}

class CachePutFailure extends Failure {}

class CacheDeleteFailure extends Failure {}

class InvalidInputFailure extends Failure {}